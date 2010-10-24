# $OpenBSD: Makefile,v 1.2 2010/10/24 08:45:02 ajacoutot Exp $

COMMENT=	GNU implementation of the SASL framework

DISTNAME=	libgsasl-1.4.4
CATEGORIES=	security
HOMEPAGE=	http://www.gnu.org/software/gsasl/
MASTER_SITES=	${MASTER_SITE_GNU:=gsasl/}
MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

REVISION=	0

SHARED_LIBS +=  gsasl 0.0 # 14.6

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MODULES=	devel/gettext

WANTLIB+=	gcrypt gpg-error idn
LIB_DEPENDS=	::devel/libidn \
		::security/libgcrypt

USE_LIBTOOL=	Yes
SEPARATE_BUILD=	simple
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
