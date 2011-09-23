# $OpenBSD: Makefile,v 1.5 2011/09/23 09:30:46 dcoppa Exp $

COMMENT =	client library for the Redis key-value store

VERSION =	2.2.2
DISTNAME =	redis-${VERSION}
CATEGORIES =	databases

HOMEPAGE =	http://redis-rb.keyvalue.org/

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

post-install:
	@find ${PREFIX}/${GEM_LIB}/ -name '.git*' -print0 | xargs -0 rm

.include <bsd.port.mk>
