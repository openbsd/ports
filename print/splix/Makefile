# $OpenBSD: Makefile,v 1.7 2010/11/11 18:34:59 espie Exp $

COMMENT=	CUPS drivers for SPL printers

DISTNAME=	splix-2.0.0
REVISION =	4
CATEGORIES=	print

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://splix.ap2c.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += asn1 c crypto gssapi krb5 m pthread ssl stdc++ z
WANTLIB += cups.>=3 cupsimage jbig.>=2

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=splix/}

LIB_DEPENDS=	::print/cups \
		::graphics/jbigkit
# pstoraster
RUN_DEPENDS=	::print/ghostscript/gnu

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
