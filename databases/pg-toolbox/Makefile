# $OpenBSD: Makefile,v 1.7 2019/07/12 20:43:58 sthen Exp $

COMMENT=	programs to aid the PostgreSQL administrator

DISTNAME=	pg-toolbox-3
CATEGORIES=	databases sysutils

HOMEPAGE=	http://pg-toolbox.projects.postgresql.org/
REVISION=	0

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# BSD / Zlib
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://pgfoundry.org/frs/download.php/1943/

RUN_DEPENDS=	databases/postgresql,-main

NO_TEST=	Yes

USE_GMAKE=	Yes

BINFILES=	pg_file2str.pl

post-install:
.for i in ${BINFILES}
	@cd ${PREFIX}/bin && mv ${i} `basename ${i} .pl`
.endfor

.include <bsd.port.mk>
