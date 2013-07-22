def main():
    x = [i for i in range(1900, 2001) if i % 4 == 0 and not ( i % 400 != 0 and i % 100 == 0 )] # leap years
    days = len(x)*366+(101-len(x))*365 # days between 1900/01/01 and 2000/12/31
    y = [i + 1 for i in range(1, days + 1) if i % 7 == 6 ]                                         # Sundays
    ord_months = [1, 32, 60, 91,121,152,182,213,244,274,305,335] # 0月0日を0とする
    lea_months = [1, 32, 61, 92,122,153,183,214,245,275,306,336]
    
    cur_leap = []
    first_days = []
    for i in range(1901,2001):
        behind_days = gen_days(i, cur_leap)
        if i in x:
            first_days += [ n + behind_days for n in lea_months ] # 月初めの一意日付リスト
            cur_leap.append(i)
        else :
            first_days += [ n + behind_days for n in ord_months ]
    l = list(set(first_days) & set(y))
    l.sort()
    print(len(l))

def gen_days(year, cur_leap):
    days = len(cur_leap)*366 + (year-1900-len(cur_leap))*365
    return days

if __name__ == "__main__":
    main()
