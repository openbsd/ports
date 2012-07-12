# $OpenBSD: Makefile,v 1.5 2012/07/12 16:01:53 sebastia Exp $

COMMENT=	GNU implementation of the SASL framework

DISTNAME=	libgsasl-1.8.0
CATEGORIES=	security
HOMEPAGE=	http://www.gnu.org/software/gsasl/
MASTER_SITES=	${MASTER_SITE_GNU:=gsasl/}
MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

SHARED_LIBS +=  gsasl 0.0 # 14.6

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MODULES=	devel/gettext

WANTLIB+=	gcrypt gpg-error idn
LIB_DEPENDS=	devel/libidn \
		security/libgcrypt

USE_LIBTOOL=	Yes
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
