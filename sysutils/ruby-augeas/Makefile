# $OpenBSD: Makefile,v 1.11 2016/09/05 09:00:08 jasper Exp $

COMMENT=	provider bindings for Augeas

DISTNAME=	ruby-augeas-0.5.0
PKGNAME=	${DISTNAME:S/ruby-//}
REVISION=	3
CATEGORIES=	sysutils

HOMEPAGE=	http://augeas.net/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby
MODRUBY_REV=	2.2

WANTLIB+=	augeas pthread xml2

LIB_DEPENDS=	sysutils/augeas

CONFIGURE_STYLE=ruby gem ext

pre-configure:
	${SUBST_CMD} ${WRKDIST}/ext/augeas/extconf.rb

.include <bsd.port.mk>
