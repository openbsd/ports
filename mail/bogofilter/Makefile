# $OpenBSD: Makefile,v 1.3 2005/09/10 10:01:17 espie Exp $

DISTNAME=	bogofilter-0.92.8
PKGNAME=	${DISTNAME}p0

CATEGORIES=	mail
COMMENT=	'bayesian spam filter'
MAINTAINER=	Marc Espie <espie@openbsd.org>

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bogofilter/}
CONFIGURE_STYLE=gnu

FLAVORS=	db4

FLAVOR?=
.if ${FLAVOR:L} == "db4"
DB_INC=		${LOCALBASE}/include/db4
DB_LIB=		${LOCALBASE}/lib/db4
LIB_DEPENDS+=	lib/db4/db.=4:db-4.*:databases/db/v4
.else
DB_INC=		${LOCALBASE}/include/db
DB_LIB=		${LOCALBASE}/lib/db
LIB_DEPENDS+=	lib/db/db.=3:db-3.*:databases/db/v3
.endif


CONFIGURE_ENV =CPPFLAGS='-I${DB_INC}'
CONFIGURE_ENV+=LDFLAGS='-L${DB_LIB}'

CONFIGURE_ARGS+=--with-included-gsl

WANTLIB=	c m

# GPL
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes

SAMPLEDIR=${PREFIX}/share/examples/bogofilter

post-install:
	${INSTALL_DATA_DIR} ${SAMPLEDIR}
	mv ${WRKINST}${SYSCONFDIR}/bogofilter.cf.example ${SAMPLEDIR}
.include <bsd.port.mk>
