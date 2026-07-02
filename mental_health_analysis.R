library(tidyverse)

df_mh <- read.csv("~/Downloads/Mental-Health.csv", stringsAsFactors = FALSE)
names(df_mh)

# 1. Family History vs Treatment Seeking
family_treatment <- df_mh %>%
  group_by(family_history, treatment) %>%
  summarise(count = n(), .groups = "drop")

ggplot(family_treatment, aes(x = family_history, y = count, fill = treatment)) +
  geom_col(position = "dodge") +
  labs(title = "Family History vs Treatment Seeking",
       x = "Family History of Mental Health Issues",
       y = "Count", fill = "Sought Treatment") +
  scale_fill_manual(values = c("No" = "steelblue", "Yes" = "tomato")) +
  theme_minimal()

# 2. Work Interference vs Treatment Seeking
work_treatment <- df_mh %>%
  filter(work_interfere != "") %>%
  group_by(work_interfere, treatment) %>%
  summarise(count = n(), .groups = "drop")

ggplot(work_treatment, aes(x = work_interfere, y = count, fill = treatment)) +
  geom_col(position = "fill") +
  scale_y_continuous(labels = scales::percent) +
  labs(title = "Work Interference vs Treatment Seeking",
       x = "Mental Health Work Interference",
       y = "Percentage", fill = "Sought Treatment") +
  scale_fill_manual(values = c("No" = "steelblue", "Yes" = "tomato")) +
  theme_minimal()

# 3. Age Distribution by Treatment Seeking
df_mh_clean <- df_mh %>%
  filter(Age > 15, Age < 75)

ggplot(df_mh_clean, aes(x = Age, fill = treatment)) +
  geom_histogram(binwidth = 5, position = "dodge", alpha = 0.8) +
  labs(title = "Age Distribution by Treatment Seeking",
       x = "Age", y = "Count", fill = "Sought Treatment") +
  scale_fill_manual(values = c("No" = "steelblue", "Yes" = "tomato")) +
  theme_minimal()

# 4. Mental Health Benefits vs Treatment Seeking
benefits_treatment <- df_mh %>%
  filter(benefits != "") %>%
  group_by(benefits, treatment) %>%
  summarise(count = n(), .groups = "drop")

ggplot(benefits_treatment, aes(x = benefits, y = count, fill = treatment)) +
  geom_col(position = "fill") +
  scale_y_continuous(labels = scales::percent) +
  labs(title = "Mental Health Benefits vs Treatment Seeking",
       x = "Company Provides Mental Health Benefits",
       y = "Percentage", fill = "Sought Treatment") +
  scale_fill_manual(values = c("No" = "steelblue", "Yes" = "tomato")) +
  theme_minimal()

# 5. Remote Work vs Treatment Seeking
remote_treatment <- df_mh %>%
  filter(remote_work != "") %>%
  group_by(remote_work, treatment) %>%
  summarise(count = n(), .groups = "drop")

ggplot(remote_treatment, aes(x = remote_work, y = count, fill = treatment)) +
  geom_col(position = "fill") +
  scale_y_continuous(labels = scales::percent) +
  labs(title = "Remote Work vs Treatment Seeking",
       x = "Works Remotely",
       y = "Percentage", fill = "Sought Treatment") +
  scale_fill_manual(values = c("No" = "steelblue", "Yes" = "tomato")) +
  theme_minimal()