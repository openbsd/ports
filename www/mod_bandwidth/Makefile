# $OpenBSD: Makefile,v 1.1.1.1 2006/10/18 14:58:30 ajacoutot Exp $

# This port currently only works with archs supporting dynamic loading
# and has Apache that supports DSO's.
SHARED_ONLY=	Yes

COMMENT=	"bandwidth limiter for Apache"

DISTFILES=	mod_bandwidth.c cleanlink.pl
PKGNAME=	mod_bandwidth-2.0.6
CATEGORIES=     www
MASTER_SITES=	ftp://ftp.cohprog.com/pub/apache/module/

HOMEPAGE=	http://www.cohprog.com/mod_bandwidth.html

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache Group licence
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

SUBST_VARS=	PKGNAME HOMEPAGE
DIST_SUBDIR=	${PKGNAME}
NO_REGRESS=	Yes

do-extract:
.for i in ${DISTFILES}
	cp ${DISTDIR}/${DIST_SUBDIR}/${i} ${WRKSRC}
.endfor

do-build:
	cd ${WRKSRC} && /usr/sbin/apxs -Wc,"${CFLAGS}" -c mod_bandwidth.c \
		-o ${WRKBUILD}/mod_bandwidth.so
	sed 's,!!PREFIX!!,${PREFIX},' \
		< ${FILESDIR}/mod_bandwidth-enable > ${WRKBUILD}/mod_bandwidth-enable
	perl -pi -e "s,\/usr\/local\/bin\/perl,\/usr\/bin\/perl,g" ${WRKSRC}/cleanlink.pl
	perl -pi -e "s,\/tmp\/apachebw,\/var\/www\/tmp\/apachebw,g" ${WRKSRC}/cleanlink.pl

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_bandwidth
	${INSTALL_DATA} ${WRKBUILD}/mod_bandwidth.so ${PREFIX}/lib
	${INSTALL_SCRIPT} ${WRKBUILD}/mod_bandwidth-enable ${PREFIX}/sbin
	${INSTALL_SCRIPT} ${WRKBUILD}/cleanlink.pl ${PREFIX}/sbin
	@head -376 ${WRKSRC}/mod_bandwidth.c \
		> ${PREFIX}/share/doc/mod_bandwidth/README.mod_bandwidth

.include <bsd.port.mk>
