PKG_ARCH=		*

COMMENT=		Foomatic PPD data

V=			20210611
DISTNAME=		foomatic-db-4.0-${V}
PKGNAME=		foomatic-db-4.0.${V}

CATEGORIES=		print

HOMEPAGE=		http://www.linux-foundation.org/en/OpenPrinting/Database/Foomatic

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 - MIT
PERMIT_PACKAGE=	Yes

# tarballs are only available for a 24 hour period
#MASTER_SITES=		http://www.openprinting.org/download/foomatic/
MASTER_SITES=		https://src.fedoraproject.org/repo/extras/foomatic-db/${DISTFILES}/sha512/b6d2526f6c392620f1bb1511063ff8c709f66a8b20ee2f9026017884d29b80cdf52727d6c44f98559f2b461c2cabeb3c672284af7218a4316921ff1698499d27/

BUILD_DEPENDS=		print/cups,-libs

CONFIGURE_STYLE=	gnu

WRKDIST=		${WRKDIR}/foomatic-db-${V}

NO_BUILD=		Yes
NO_TEST=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

### Fedora
# splix
	find ${WRKSRC}/db/source/printer -name '*.xml' \
		-exec grep -l "<driver>splix" {} + | xargs -r rm
	rm ${WRKSRC}/db/source/driver/splix.xml
# foo2zjs
.for x in zjs zjs-z1 zjs-z2 zjs-z3 oak oak-z1 hp qpdl lava kyo xqx slx hiperc hiperc-z1 hbpl2
	find ${WRKSRC}/db/source/printer -name '*.xml' \
		-exec grep -l "<driver>foo2${x}" {} + | xargs -r rm
	find ${WRKSRC}/db/source/printer -name '*.xml' | \
		grep -E 'Samsung-CLP-610|Samsung-CLP-620' | xargs -r rm
	find ${WRKSRC}/db/source/printer -name '*.xml' | \
		grep -E 'KONICA_MINOLTA-magicolor_2430_DL' | xargs -r rm
	rm ${WRKSRC}/db/source/driver/foo2${x}.xml
#		${WRKSRC}/db/source/opt/foo2${x}-*
.endfor
# these use binaries that are not provided anymore
.for x in lm1100 pentaxpj pbm2l2030 pbm2l7k lex5700 lex7000 c2050 c2070 cjet
	find ${WRKSRC}/db/source/printer -name '*.xml' \
		-exec grep -l "<driver>${x}</driver>" {} + | xargs -r rm
	rm -f ${WRKSRC}/db/source/driver/${x}.xml \
		${WRKSRC}/db/source/opt/${x}-*
.endfor
.for x in drv_x125 ml85p pbm2lwxl pbmtozjs bjc800j m2300w m2400w
	find ${WRKSRC}/db/source/printer -name '*.xml' \
		-exec grep -l "<driver>${x}</driver>" {} + | xargs -r rm
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
