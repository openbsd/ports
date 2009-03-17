# $OpenBSD: Makefile,v 1.1.1.1 2009/03/17 18:37:20 ajacoutot Exp $

COMMENT=	CUPS drivers for SPL printers

DISTNAME=	splix-2.0.0
CATEGORIES=	print

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://splix.ap2c.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=splix/}

WANTLIB += c crypto m pthread ssl stdc++ z

LIB_DEPENDS=	cups.>=3,cupsimage::print/cups \
		jbig.>=2::graphics/jbigkit

USE_GMAKE=	Yes
NO_REGRESS=	Yes

MAKE_FLAGS=	V=1 \
		MAKE=${MAKE_PROGRAM} \
		CXX=${CXX} \
		OPTIM_CXXFLAGS="${CXXFLAGS}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/splix
	${SUBST_CMD} -c ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/splix/README.OpenBSD
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/doc/splix/README.OpenBSD

.include <bsd.port.mk>
