# $OpenBSD: Makefile,v 1.3 2005/05/30 12:21:30 xsa Exp $

COMMENT=	"Apache module that provides randomized services"

# This port currently only works with archs supporting dynamic loading
# and has Apache that supports DSO's.
NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

DISTNAME=	mod_random-1.4
CATEGORIES=	www

HOMEPAGE=	http://software.tangent.org/projects.pl?view=mod_random
MASTER_SITES=	http://software.tangent.org/download/ \
		ftp://ftp.tangent.org/pub/apache/

# BSD 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes
APXS=		/usr/sbin/apxs

do-build:
	cd ${WRKSRC} && \
		${APXS} -c -o mod_random.so mod_random.c
	@sed 's,!!PREFIX!!,${PREFIX},' \
		< ${FILESDIR}/mod_random-enable \
		> ${WRKBUILD}/mod_random-enable

do-install:
	${INSTALL_DATA} ${WRKBUILD}/mod_random.so ${PREFIX}/lib
	${INSTALL_SCRIPT} ${WRKBUILD}/mod_random-enable ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_random
	${INSTALL_DATA} ${WRKSRC}/faq.html ${PREFIX}/share/doc/mod_random

.include <bsd.port.mk>
