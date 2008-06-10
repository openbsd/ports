# $OpenBSD: Makefile,v 1.1.1.1 2008/06/10 20:48:10 okan Exp $

COMMENT =	top for monitoring PostgreSQL processes

DISTNAME =	pg_top-3.6.2
CATEGORIES =	databases sysutils

HOMEPAGE =	http://ptop.projects.postgresql.org/
MASTER_SITES =	http://pgfoundry.org/frs/download.php/1781/

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c kvm m termcap

LIB_DEPENDS = 	pq.>=5:postgresql-client-*:databases/postgresql

SEPARATE_BUILD =	concurrent
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-postgresql=${LOCALBASE}

.include <bsd.port.mk>
