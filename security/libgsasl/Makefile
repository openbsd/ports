# $OpenBSD: Makefile,v 1.11 2013/11/09 23:19:03 naddy Exp $

COMMENT=	GNU implementation of the SASL framework

DISTNAME=	libgsasl-1.8.0
CATEGORIES=	security
HOMEPAGE=	https://www.gnu.org/software/gsasl/
MASTER_SITES=	${MASTER_SITE_GNU:=gsasl/}
MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>
REVISION =	1

SHARED_LIBS +=  gsasl 0.0 # 14.6

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	yes

MODULES=	devel/gettext

WANTLIB+=	gcrypt gpg-error idn
LIB_DEPENDS=	devel/libidn \
		security/libgcrypt

# non-shared does not inherit LIB_DEPENDS
LIB_DEPENDS +=	security/libgpg-error

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
