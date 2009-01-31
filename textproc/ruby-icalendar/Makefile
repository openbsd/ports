# $OpenBSD: Makefile,v 1.4 2009/01/31 13:13:43 bernd Exp $

COMMENT=		iCalendar support for Ruby

DISTNAME=		icalendar-1.1.0
PKGNAME=		ruby-${DISTNAME}
CATEGORIES=		textproc

HOMEPAGE=		http://icalendar.rubyforge.org/

# Ruby license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_RUBYFORGE:=icalendar/}

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

PKG_ARCH=		*

REGRESS_DEPENDS=	::devel/ruby-rake

do-regress:
	@cd ${WRKDIST} && ${SETENV} TZ=GMT ${LOCALBASE}/bin/rake test

.include <bsd.port.mk>
