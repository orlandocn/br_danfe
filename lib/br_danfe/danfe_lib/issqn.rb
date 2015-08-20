module BrDanfe
  module DanfeLib
    class Issqn
      Y = 25.72 + SPACE_BETWEEN_GROUPS

      def initialize(pdf, xml)
        @pdf = pdf
        @xml = xml

        @ltitle = Y - 0.42
        @l1 = Y
      end

      def render
        @pdf.ititle 0.42, 10.00, 0.75, @ltitle, "issqn.title"

        @pdf.lbox LINE_HEIGHT, 4.64, 0.75, @l1, @xml, "emit/IM"
        @pdf.lnumeric LINE_HEIGHT, 5.14, 5.39, @l1, @xml, "total/ISSQNtot/vServ"
        @pdf.lnumeric LINE_HEIGHT, 5.14, 10.53, @l1, @xml, "total/ISSQNtot/vBC"
        @pdf.lnumeric LINE_HEIGHT, 4.64, 15.67, @l1, @xml, "total/ISSQNtot/vISS"
      end
    end
  end
end
