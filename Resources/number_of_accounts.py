from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys    
    

def print_number_of_accounts():    
    driver = webdriver.Firefox()
    driver.get("https://parabank.parasoft.com/parabank/index.htm")
    driver.maximize_window()
    driver.implicitly_wait(2)
    username_input = driver.find_element(By.NAME, "username")
    password_input = driver.find_element(By.NAME, "password")
    login_btn = driver.find_element(By.CLASS_NAME, "button")
    username_input.send_keys("john")
    password_input.send_keys("demo")
    login_btn.click()
    driver.implicitly_wait(3)
    rows = driver.find_elements(By.XPATH, "//table[@class='gradient-style']/tbody/trr")
    return len(rows)

