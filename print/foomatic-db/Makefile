PKG_ARCH=		*

COMMENT=		Foomatic PPD data

V=			20201104
DISTNAME=		foomatic-db-4.0-${V}
PKGNAME=		foomatic-db-4.0.${V}

CATEGORIES=		print

HOMEPAGE=		http://www.linux-foundation.org/en/OpenPrinting/Database/Foomatic

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 - MIT
PERMIT_PACKAGE=	Yes

# tarballs are only available for a 24 hour period
#MASTER_SITES=		http://www.openprinting.org/download/foomatic/
MASTER_SITES=		https://src.fedoraproject.org/repo/extras/foomatic-db/${DISTFILES}/sha512/ad087bcb69479370c32ed3a34600377b21468bff02ce47432ba0bc065bd6aee5b508088402abea908e444cba4344318242c62a1dd2e5de0061bec0100a0aac06/

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
