# $OpenBSD: Makefile,v 1.28 2003/03/29 04:13:54 brad Exp $
# $NetBSD: Makefile,v 1.25 1999/03/04 14:18:54 tron Exp $

COMMENT=	"toolkit for converting images between different formats"

DISTNAME=	netpbm-9.24
PKGNAME=	${DISTNAME}p1
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=netpbm/}
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://netpbm.sourceforge.net/

LIB_DEPENDS=	tiff.35::graphics/tiff \
		jpeg.62::graphics/jpeg \
		png.2::graphics/png

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_CDROM=	Yes

MAKE_FLAGS=	CC="${CC}"
FAKE_FLAGS=	${MAKE_FLAGS} PREFIX="${WRKINST}${TRUEPREFIX}"

USE_GMAKE=	Yes

MAKE_FILE=	GNUmakefile

pre-build:
	@mv -f ${WRKSRC}/pm_config.h ${WRKSRC}/pm_config.h.new
	@mv -f ${WRKSRC}/pbm/pm.h ${WRKSRC}/pbm/pm.h.new
	@sed -e s#!!X11R6!!#${X11BASE}#g \
		${WRKSRC}/pm_config.h.new > ${WRKSRC}/pm_config.h
	@sed -e 's#<shhopt.h>#<pm_shhopt.h>#g' \
		${WRKSRC}/pbm/pm.h.new > ${WRKSRC}/pbm/pm.h
	@cp -f ${FILESDIR}/Makefile.config.OpenBSD \
		${WRKSRC}/Makefile.config
	@cd ${WRKSRC}/shhopt; ln -sf shhopt.h pm_shhopt.h

NO_REGRESS=	Yes

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
MAKE_FLAGS+=	NETPBMLIBTYPE=unixstatic
.else
MAKE_FLAGS+=	NETPBMLIBTYPE=unixshared
.endif
