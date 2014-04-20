# $OpenBSD: Makefile,v 1.10 2014/04/20 19:40:55 okan Exp $

BROKEN =	constant core dumps

COMMENT =	top for monitoring PostgreSQL processes

DISTNAME =	pg_top-3.7.0
CATEGORIES =	databases sysutils

HOMEPAGE =	http://ptop.projects.postgresql.org/
MASTER_SITES =	http://pgfoundry.org/frs/download.php/3503/

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c kvm m termcap

LIB_DEPENDS = 	databases/postgresql
WANTLIB +=	pq>=5

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-postgresql=${LOCALBASE}

.include <bsd.port.mk>
