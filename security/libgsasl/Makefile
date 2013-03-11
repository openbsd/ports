# $OpenBSD: Makefile,v 1.6 2013/03/11 11:41:25 espie Exp $

COMMENT=	GNU implementation of the SASL framework

DISTNAME=	libgsasl-1.8.0
CATEGORIES=	security
HOMEPAGE=	http://www.gnu.org/software/gsasl/
MASTER_SITES=	${MASTER_SITE_GNU:=gsasl/}
MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

SHARED_LIBS +=  gsasl 0.0 # 14.6

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	yes

MODULES=	devel/gettext

WANTLIB+=	gcrypt gpg-error idn
LIB_DEPENDS=	devel/libidn \
		security/libgcrypt

USE_LIBTOOL=	Yes
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
