# $OpenBSD: Makefile,v 1.3 2005/11/19 13:15:21 bernd Exp $

COMMENT=	"internationalized string handling"

DISTNAME=	libidn-0.5.20
PKGNAME=	${DISTNAME}p0
CATEGORIES=	devel

HOMEPAGE=	http://www.gnu.org/software/libidn/

MAINTAINER=	Bernd Ahlers <bernd@openbsd.org>

# GPL / LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://alpha.gnu.org/pub/gnu/libidn/ \
		http://josefsson.org/libidn/releases/

WANTLIB=		c
MODULES=		devel/gettext
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

USE_LIBTOOL=		Yes

post-extract:
	@rm -f ${WRKSRC}/contrib/doxygen/*.orig

.include <bsd.port.mk>
