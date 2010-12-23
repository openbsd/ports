# $OpenBSD: Makefile,v 1.1.1.1 2010/12/23 14:01:17 claudio Exp $

COMMENT =	paper_trail lets you track changes to your models' data

DISTNAME =	paper_trail-1.6.4
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM =	 Yes
PERMIT_PACKAGE_FTP =	 Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	 Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		databases/ruby-activerecord,${MODRUBY_FLAVOR} \
			devel/ruby-actionpack,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
