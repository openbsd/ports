# $OpenBSD: Makefile,v 1.14 2013/10/01 09:07:17 ajacoutot Exp $

COMMENT=	bandwidth limiter for Apache

V=		2.1
REVISION=	5
DISTFILES=	mod_bandwidth.c cleanlink.pl:0
DISTNAME=	mod_bandwidth-${V}
CATEGORIES=     www
MASTER_SITES=	ftp://ftp.cohprog.com/pub/apache/module/1.3.0/ \
		https://distfiles.bsdfrog.org/mod_bandwidth/1.3.0/
MASTER_SITES0=	ftp://ftp.cohprog.com/pub/apache/module/ \
		https://distfiles.bsdfrog.org/mod_bandwidth/

HOMEPAGE=	http://www.cohprog.com/mod_bandwidth.html

MODULES+=	apache-module

# Apache Group licence
PERMIT_PACKAGE_CDROM=   Yes

SUBST_VARS=	PKGNAME HOMEPAGE
DIST_SUBDIR=	${DISTNAME:S/-${V}//}
NO_TEST=	Yes

MODAPACHE_NAME=	bandwidth

do-extract:
	@mkdir ${WRKSRC}
.for i in ${DISTFILES:S/:0//}
	@cp ${DISTDIR}/${DIST_SUBDIR}/${i} ${WRKSRC}
.endfor

do-build:
	cd ${WRKSRC} && /usr/sbin/apxs -Wc,"${CFLAGS}" -c mod_bandwidth.c \
		-o ${WRKBUILD}/mod_bandwidth.so
	@perl -pi -e "s,\/usr\/local\/bin\/perl,\/usr\/bin\/perl,g" ${WRKSRC}/cleanlink.pl
	@perl -pi -e "s,\/tmp\/apachebw,\/var\/www\/tmp\/apachebw,g" ${WRKSRC}/cleanlink.pl
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_bandwidth
	${INSTALL_SCRIPT} ${WRKBUILD}/cleanlink.pl ${PREFIX}/sbin
	@head -378 ${WRKSRC}/mod_bandwidth.c \
		> ${PREFIX}/share/doc/mod_bandwidth/README.mod_bandwidth
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
