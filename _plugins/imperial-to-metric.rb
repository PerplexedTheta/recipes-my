module Jekyll
    module ImperialToMetricFilter
      # energy
      def kcal_to_kj(input, roundTo=0)
        (input * 4.184).round(roundTo)
      end
      # temperature
      def f_to_c(input, roundTo=0)
        ((input - 32) * 5/9).round(roundTo)
      end
      # volume
      def gal_to_l(input, roundTo=1)
        (input * 4.5).round(roundTo)
      end
      def qt_to_l(input, roundTo=1)
        (input * 1.1).round(roundTo)
      end
      def pt_to_ml(input, roundTo=0)
        (input * 575).round(roundTo)
      end
      def cup_to_ml(input, roundTo=0)
        (input * 240).round(roundTo)
      end
      def floz_to_ml(input, roundTo=0)
        (input * 30).round(roundTo)
      end
      def tbsp_to_ml(input, roundTo=0)
        (input * 15).round(roundTo)
      end
      def tsp_to_ml(input, roundTo=0)
        (input * 5).round(roundTo)
      end
      # mass
      def lb_to_g(input, roundTo=0)
        (input * 450).round(roundTo)
      end
      def oz_to_g(input, roundTo=0)
        (input * 30).round(roundTo)
      end
    end
  end
  
  Liquid::Template.register_filter(Jekyll::ImperialToMetricFilter)
