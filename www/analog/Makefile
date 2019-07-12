# $OpenBSD: Makefile,v 1.60 2019/07/12 20:50:17 sthen Exp $

COMMENT=	extremely fast program for analysing WWW logfiles

DISTNAME=	analog-6.0
REVISION=	4
CATEGORIES=	www

MASTER_SITES=	http://analog.gsp.com/ \
		http://redmoon.reverse.net/analog/analog-6.0.tar.gz

HOMEPAGE=	http://analog.gsp.com/

# GPLv2 only
PERMIT_PACKAGE=	Yes

WANTLIB += c iconv m jpeg png z gd>=18 pcre pthread

LIB_DEPENDS=	converters/libiconv \
		graphics/gd \
		devel/pcre

ANALOGDIR=	${PREFIX}/share/analog
CONFIGFILE=	${SYSCONFDIR}/analog.cfg
DOCDIR=		${PREFIX}/share/doc/analog
HTTPDIR=	${VARBASE}/www
IMAGEDIR=	/analog-images

CFLAGS+=	-I${LOCALBASE}/include \
		-DANALOGDIR=\"${ANALOGDIR}/\" \
		-DDEFAULTCONFIGFILE=\"${CONFIGFILE}\" \
		-DHTTPDIR=\"${HTTPDIR}/\" \
		-DIMAGEDIR=\"${IMAGEDIR}/\" \
		-DLANGDIR=\"${ANALOGDIR}/lang/\" \
		-DANALOG=\"${PREFIX}/bin/analog\" \
		-DHAVE_GD -DHAVE_ZLIB -DHAVE_PCRE -DHAVE_ADDR_T

ALL_TARGET=	analog
MAKE_FLAGS=	CC='${CC}' CFLAGS='${CFLAGS}' \
		LIBS="-L${LOCALBASE}/lib -L${X11BASE}/lib -lgd -lpng -lm -ljpeg -lz -lpcre -liconv"

pre-configure:
	@mv ${WRKSRC}/anlgform.pl ${WRKSRC}/anlgform.pl.src
	@sed -e "s,@PREFIX@,${PREFIX},g" < ${WRKSRC}/anlgform.pl.src \
		> ${WRKSRC}/anlgform.pl

NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/analog
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/analog
	${INSTALL_DATA_DIR} ${ANALOGDIR}/lang ${ANALOGDIR}/images
	${INSTALL_PROGRAM} ${WRKBUILD}/analog ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/docs/* ${PREFIX}/share/doc/analog
	${INSTALL_DATA} ${WRKSRC}/examples/*.cfg \
	    ${PREFIX}/share/examples/analog
	${INSTALL_DATA} ${WRKSRC}/images/* ${ANALOGDIR}/images
	${INSTALL_DATA} ${WRKSRC}/lang/* ${ANALOGDIR}/lang
	cd ${WRKSRC} && ${INSTALL_DATA} anlgform.html anlgform.pl \
	    ${ANALOGDIR}

.include <bsd.port.mk>
