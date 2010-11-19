# $OpenBSD: Makefile,v 1.8 2010/11/19 07:23:09 espie Exp $

COMMENT=	simple creation of MIME email messages in Ruby

DISTNAME=	mailfactory-1.4.0
REVISION=	1
CATEGORIES=	mail

HOMEPAGE=	http://rubyforge.org/projects/mailfactory/

# Ruby license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		mail/ruby-mime-types,${FLAVOR}

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
