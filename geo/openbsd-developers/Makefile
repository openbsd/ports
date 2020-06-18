# $OpenBSD: Makefile,v 1.171 2020/06/18 09:02:31 mvs Exp $

CATEGORIES=		geo
COMMENT=		geographic location of past and present OpenBSD developers

DISTNAME=		openbsd-developers-2.0
REVISION=		37

DISTFILES=
HOMEPAGE=		https://www.openbsd.org/

NO_BUILD=		Yes
NO_TEST=		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/markers
	${INSTALL_DATA} ${FILESDIR}/OpenBSD ${PREFIX}/share/markers
	perl -p -e 'BEGIN { print "{ \"type\": \"FeatureCollection\",\"features\":[\n" } ; \
		s/^#.*$$//; s/^([\d\-\.]+)\s+([\d\.\-]+)\s+"(\w+)"\s+# (.*)$$/{ "type": "Feature", "geometry" : {"type" : "Point", "coordinates": [\2, \1]}, "properties" : {"login": "\3@", "name": "\4"}},/; \
			END { print "]}" }' ${FILESDIR}/OpenBSD | \
		perl -0 -pe 's#,\n\n##' > ${PREFIX}/share/markers/OpenBSD.geojson

where-am-i:
	@echo "$$(sysctl -n hw.sensors.nmea0.angle0 | cut -d' ' -f1)\t\t$$(sysctl -n hw.sensors.nmea0.angle1 | cut -d' ' -f1)\t\t\"$$(whoami)\"\\t\t#$$(finger $$(whoami) | head -1 | cut -d\: -f3-)"

PERMIT_PACKAGE=	Yes

.include <bsd.port.mk>
