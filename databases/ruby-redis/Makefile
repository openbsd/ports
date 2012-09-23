# $OpenBSD: Makefile,v 1.7 2012/09/23 16:57:33 jeremy Exp $

COMMENT =	client library for the Redis key-value store

VERSION =	3.0.1
DISTNAME =	redis-${VERSION}
REVISION =	0
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

MODRUBY_REGRESS =	rake

REGRESS_DEPENDS =	databases/redis

# Be sure to have a redis server running with the command:
# cd ${WRKSRC} && sudo redis-server ./test/test.conf
REGRESS_IS_INTERACTIVE =Yes

post-install:
	@find ${PREFIX}/${GEM_LIB}/ -name '.git*' -print0 | xargs -0 rm

.include <bsd.port.mk>
