# $OpenBSD: Makefile,v 1.6 2010/09/28 20:12:18 jeremy Exp $

COMMENT=		iCalendar support for Ruby

DISTNAME=		icalendar-1.1.0
PKGNAME=		ruby-${DISTNAME}
REVISION =      	0
CATEGORIES=		textproc

HOMEPAGE=		http://icalendar.rubyforge.org/

# Ruby license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

PKG_ARCH=		*

MODRUBY_REGRESS=	rake

do-regress:
	@cd ${WRKDIST} && ${SETENV} TZ=GMT ${RAKE} test

.include <bsd.port.mk>
