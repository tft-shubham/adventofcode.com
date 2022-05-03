diagnostic_report = ['00100', '11110', '10110', '10111', '10101', '01111', '00111', '11100', '10000', '11001', '00010', '01010']

gamma_rate = ''
epsilon_rate = ''

def cal_gamma_rate(diagnostic_report)

  for i in 0..4 #length of binary no.
    no_of_time_zero = 0
    no_of_time_one = 0
    diagnostic_report.each do |binary_number|
      if binary_number.to_s[i] == '0'
        no_of_time_zero += 1
      else
        no_of_time_one += 1
      end
    end

    if no_of_time_zero < no_of_time_one
      gamma_rate = "#{gamma_rate}1"
    else
      gamma_rate = "#{gamma_rate}0"
    end
  end

  gamma_rate
end

def cal_epsilon_rate(gamma_rate)
  for i in 0..gamma_rate.length - 1
    if gamma_rate[i] == '0'
      epsilon_rate = "#{epsilon_rate}1"
    else
      epsilon_rate = "#{epsilon_rate}0"
    end
  end

  epsilon_rate
end

gamma_rate = cal_gamma_rate(diagnostic_report)
epsilon_rate = cal_epsilon_rate(gamma_rate)

p gamma_rate.to_i(2) * epsilon_rate.to_i(2)