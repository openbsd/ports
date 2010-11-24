# $OpenBSD: Makefile,v 1.9 2010/11/24 21:35:14 jeremy Exp $

COMMENT=	simple creation of MIME email messages in Ruby

DISTNAME=	mailfactory-1.4.0
REVISION=	2
CATEGORIES=	mail

HOMEPAGE=	http://rubyforge.org/projects/mailfactory/

# Ruby license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		mail/ruby-mime-types,${MODRUBY_FLAVOR}

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
