# $OpenBSD: Makefile,v 1.30 2020/07/05 11:29:36 landry Exp $

COMMENT = 	lightweight connection pooler for PostgreSQL

V = 		1.14.0
DISTNAME = 	pgbouncer-${V}

CATEGORIES = 	databases

HOMEPAGE = 	http://wiki.postgresql.org/wiki/PgBouncer

MAINTAINER = 	Pierre-Emmanuel Andre <pea@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB = 	c event_core event_extra crypto ssl

MASTER_SITES = 	https://pgbouncer.github.io/downloads/files/${V}/

LIB_DEPENDS =	devel/libevent2

CONFIGURE_STYLE = 	gnu
#Disable the detection of asciidoc since docs are already included
CONFIGURE_ENV =         ASCIIDOC=' '
CONFIGURE_ARGS = 	--with-libevent=${LOCALBASE} --without-cares
MAKE_FLAGS+=		V=1

USE_GMAKE = 		Yes

.include <bsd.port.mk>
