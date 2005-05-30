# $OpenBSD: Makefile,v 1.3 2005/05/30 12:21:30 xsa Exp $

COMMENT=	"Apache module for implementing a framework for doing design"

# This port currently only works with archs supporting dynamic loading
# and has Apache that supports DSO's.
NOT_FOR_ARCHS=	${NO_SHARED_ARCHS} 

DISTNAME=	mod_layout-3.2
CATEGORIES=	www

HOMEPAGE=	http://software.tangent.org/projects.pl?view=mod_layout
MASTER_SITES=	http://software.tangent.org/download/ \
		ftp://ftp.tangent.org/pub/apache/

# Apache Software License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes

post-build:
	@sed 's,!!PREFIX!!,${PREFIX},' \
		< ${FILESDIR}/mod_layout-enable \
		> ${WRKBUILD}/mod_layout-enable

do-install:
	${INSTALL_DATA} ${WRKBUILD}/mod_layout.so ${PREFIX}/lib
	${INSTALL_SCRIPT} ${WRKBUILD}/mod_layout-enable ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_layout
	${INSTALL_DATA} ${WRKSRC}/faq.html ${PREFIX}/share/doc/mod_layout
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_layout/directives
	${INSTALL_DATA} ${WRKSRC}/directives/* \
		${PREFIX}/share/doc/mod_layout/directives

.include <bsd.port.mk>
