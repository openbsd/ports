# $OpenBSD: Makefile,v 1.6 2010/09/28 20:12:17 jeremy Exp $

COMMENT=	simple creation of MIME email messages in Ruby

DISTNAME=	mailfactory-1.4.0
PKGNAME=	ruby-${DISTNAME}
REVISION=	0
CATEGORIES=	mail

HOMEPAGE=	http://rubyforge.org/projects/mailfactory/

# Ruby license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::mail/ruby-mime-types

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
