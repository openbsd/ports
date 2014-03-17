# $OpenBSD: Makefile,v 1.56 2014/03/17 23:22:21 sthen Exp $

COMMENT=	extremely fast program for analysing WWW logfiles

DISTNAME=	analog-6.0
REVISION=	2
CATEGORIES=	www

MASTER_SITES=	http://www.analog.cx/ \
		http://www.statslab.cam.ac.uk/~sret1/analog/ \
		http://www.magma.ca/~brendanr/analog/ \
		http://brendanr.simplenet.com/analog/ \
		http://analog.gsp.com/ \
		http://redmoon.reverse.net/analog/ \
		http://www.rge.com/pub/infosystems/statistics/analog/ \
		http://blip.cetlink.net/analog/ \
		http://analog.technomancer.com/ \
		http://analog.wizard.net/ \
		ftp://ftp.netcasting.net/pub/packages/analog/

HOMEPAGE=	http://www.analog.cx/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m jpeg png z gd>=18 pcre pthread

LIB_DEPENDS=	graphics/gd \
		devel/pcre

MODULES=	converters/libiconv

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
