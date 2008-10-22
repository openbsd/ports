# $OpenBSD: Makefile,v 1.1.1.1 2008/10/22 11:08:09 ajacoutot Exp $

COMMENT=	programs to aid the PostgreSQL administrator

DISTNAME=	pg-toolbox-3
CATEGORIES=	databases sysutils

HOMEPAGE=	http://pg-toolbox.projects.postgresql.org/

MAINTAINER=	Pierre-Emmanuel Andre <pea@raveland.org>

# BSD / Zlib
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://pgfoundry.org/frs/download.php/1943/

RUN_DEPENDS=	 ::databases/postgresql,-main

NO_REGRESS=	Yes

USE_GMAKE=	Yes

BINFILES=	pg_file2str.pl

post-install:
.for i in ${BINFILES}
	@cd ${PREFIX}/bin && mv ${i} `basename ${i} .pl`
.endfor

.include <bsd.port.mk>
