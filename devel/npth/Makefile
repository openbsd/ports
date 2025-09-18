COMMENT=	new GNU Portable Threads Library

DISTNAME=	npth-1.8

SHARED_LIBS=	npth 1.1	# 3.0

CATEGORIES=	devel

HOMEPAGE=	https://www.gnupg.org/software/npth/index.html

MAINTAINER=	Jeremie Courreges-Anglas <jca@wxcvbn.org>

# GPLv2
PERMIT_PACKAGE=	Yes

EXTRACT_SUFX=		.tar.bz2

WANTLIB=		pthread

SITES=			${SITE_GNUPG:=npth/}

CONFIGURE_STYLE=	gnu

LIBnpth_MAJOR=${LIBnpth_VERSION:R}
LIBnpth_MINOR=${LIBnpth_VERSION:E}

SUBST_VARS=		LIBnpth_MAJOR LIBnpth_MINOR

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
