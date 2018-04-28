# $OpenBSD: Makefile,v 1.46 2018/04/28 19:00:49 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		Foomatic PPD data

V=			20180228
DISTNAME=		foomatic-db-4.0-${V}
PKGNAME=		foomatic-db-4.0.${V}

CATEGORIES=		print

HOMEPAGE=		http://www.linux-foundation.org/en/OpenPrinting/Database/Foomatic

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 - MIT
PERMIT_PACKAGE_CDROM=	Yes

# tarballs are only available for a 24 hour period
#MASTER_SITES=		http://www.openprinting.org/download/foomatic/
MASTER_SITES=		http://pkgs.fedoraproject.org/repo/extras/foomatic-db/foomatic-db-4.0-${V}${EXTRACT_SUFX}/sha512/22cc0ae229fe3636942fb46e0096b3134d3a5977f18177c89fe949948b23ac9c6c57a0a79672b26b5b073aa682839130ea776f7badcfd967cdeed897b4742097/

BUILD_DEPENDS=		print/cups,-libs

CONFIGURE_STYLE=	gnu

WRKDIST=		${WRKDIR}/foomatic-db-${V}

NO_BUILD=		Yes
NO_TEST=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

### Fedora
# splix
	find ${WRKSRC}/db/source/printer -name '*.xml' | \
		xargs grep -l "<driver>splix"|xargs -r rm
	rm ${WRKSRC}/db/source/driver/splix.xml
# foo2zjs
.for x in zjs zjs-z1 zjs-z2 zjs-z3 oak oak-z1 hp qpdl lava kyo xqx slx hiperc hbpl2 hiperc-z1
	find ${WRKSRC}/db/source/printer -name '*.xml' | \
		xargs grep -l "<driver>foo2${x}" | xargs -r rm
	find ${WRKSRC}/db/source/printer -name '*.xml' | \
		grep -E 'Samsung-CLP-610|Samsung-CLP-620' | xargs -r rm
	find ${WRKSRC}/db/source/printer -name '*.xml' | \
		grep -E 'KONICA_MINOLTA-magicolor_2430_DL' | xargs -r rm
	rm ${WRKSRC}/db/source/driver/foo2${x}.xml
#		${WRKSRC}/db/source/opt/foo2${x}-*
.endfor
# these use binaries that are not provided anymore
.for x in lm1100 pentaxpj pbm2l2030 pbm2l7k lex5700 lex7000 c2050 c2070 cjet
	find ${WRKSRC}/db/source/printer -name '*.xml' | \
		xargs grep -l "<driver>${x}</driver>"| xargs -r rm
	rm -f ${WRKSRC}/db/source/driver/${x}.xml \
		${WRKSRC}/db/source/opt/${x}-*
.endfor
.for x in drv_x125 ml85p pbm2lwxl pbmtozjs bjc800j m2300w m2400w
	find ${WRKSRC}/db/source/printer -name '*.xml' | \
		xargs grep -l "<driver>${x}</driver>"| xargs -r rm
	rm -f ${WRKSRC}/db/source/driver/${x}.xml \
		${WRKSRC}/db/source/opt/${x}-*
.endfor
# ptouch-driver
	rm ${WRKSRC}/db/source/driver/ptouch.xml
	rm ${WRKSRC}/db/source/printer/Brother-PT-*.xml
	rm ${WRKSRC}/db/source/printer/Brother-QL-*.xml
	#rm ${WRKSRC}/db/source/opt/Brother-Ptouch-*.xml
###

.include <bsd.port.mk>
