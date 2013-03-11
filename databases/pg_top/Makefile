# $OpenBSD: Makefile,v 1.9 2013/03/11 02:52:07 espie Exp $

COMMENT =	top for monitoring PostgreSQL processes

DISTNAME =	pg_top-3.6.2
CATEGORIES =	databases sysutils
REVISION =	2

HOMEPAGE =	http://ptop.projects.postgresql.org/
MASTER_SITES =	http://pgfoundry.org/frs/download.php/1781/


MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c kvm m termcap

LIB_DEPENDS = 	databases/postgresql
WANTLIB +=	pq>=5

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-postgresql=${LOCALBASE}
USE_GROFF =	Yes

.include <bsd.port.mk>
