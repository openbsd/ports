# $OpenBSD: Makefile,v 1.3 2005/05/30 12:21:30 xsa Exp $

COMMENT=	"Apache module designed to replace text/plain handler"

# This port currently only works with archs supporting dynamic loading
# and has Apache that supports DSO's.
NOT_FOR_ARCHS=	${NO_SHARED_ARCHS} 

DISTNAME=	mod_text2html-1.0
CATEGORIES=	www

HOMEPAGE=	http://software.tangent.org/projects.pl?view=mod_text2html
MASTER_SITES=	http://software.tangent.org/download/ \
		ftp://ftp.tangent.org/pub/apache/

# Apache Software License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes

APXS=		/usr/sbin/apxs

do-build:
	cd ${WRKBUILD} && \
		${APXS} -c -o mod_text2html.so mod_text2html.c
	@sed 's,!!PREFIX!!,${PREFIX},' \
		< ${FILESDIR}/mod_text2html-enable \
		> ${WRKBUILD}/mod_text2html-enable

do-install:
	${INSTALL_DATA} ${WRKBUILD}/mod_text2html.so ${PREFIX}/lib
	${INSTALL_SCRIPT} ${WRKBUILD}/mod_text2html-enable ${PREFIX}/sbin

.include <bsd.port.mk>
