# $OpenBSD: Makefile,v 1.2 2008/05/09 17:23:26 bernd Exp $

COMMENT=	simple creation of MIME email messages in Ruby

DISTNAME=	mailfactory-1.3.1
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	mail

HOMEPAGE=	http://rubyforge.org/projects/mailfactory/

# Ruby license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_RUBYFORGE:=mailfactory/}

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::mail/ruby-mime-types

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
