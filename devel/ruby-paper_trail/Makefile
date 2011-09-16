# $OpenBSD: Makefile,v 1.2 2011/09/16 09:24:57 espie Exp $

COMMENT =	paper_trail lets you track changes to your models' data

DISTNAME =	paper_trail-1.6.4
REVISION=		0
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
