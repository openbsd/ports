# $OpenBSD: Makefile,v 1.22 2001/10/28 13:05:49 espie Exp $

COMMENT=	"GNU Bourne Again Shell"

DISTNAME=	bash-2.05
CATEGORIES=	shells
NEED_VERSION=	1.392

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= bash
DISTFILES=	${DISTNAME}.tar.gz ${DISTNAME:S/-/-doc-/}.tar.gz

FLAVORS=	static
FLAVOR?=

CONFIGURE_STYLE= gnu dest
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/support

.if ${FLAVOR:L} == "static"
CONFIGURE_ARGS=	--enable-static-link
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bash
	cd ${WRKDIR}/doc && \
	    ${INSTALL_DATA} article.ps article.txt bash.html bash.ps \
		bashbug.ps bashref.html bashref.ps builtins.ps  \
		${PREFIX}/share/doc/bash

.include <bsd.port.mk>
