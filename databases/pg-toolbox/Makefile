COMMENT=	programs to aid the PostgreSQL administrator

V=		3
DISTNAME=	pg-toolbox-$V
CATEGORIES=	databases sysutils
REVISION=	1

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# BSD / Zlib
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://ftp.postgresql.org/pub/projects/pgFoundry/pg-toolbox/pg-toolbox/Release$V/

RUN_DEPENDS=	databases/postgresql,-main

NO_TEST=	Yes

USE_GMAKE=	Yes

BINFILES=	pg_file2str.pl

post-install:
.for i in ${BINFILES}
	@cd ${PREFIX}/bin && mv ${i} `basename ${i} .pl`
.endfor

.include <bsd.port.mk>
