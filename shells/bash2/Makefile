# $OpenBSD: Makefile,v 1.24 2002/05/13 13:43:49 naddy Exp $

COMMENT=	"GNU Bourne Again Shell"

DISTNAME=	bash-2.05a
CATEGORIES=	shells
NEED_VERSION=	1.528
HOMEPAGE=	http://cnswww.cns.cwru.edu/~chet/bash/bashtop.html

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=bash/}
DISTFILES=	${DISTNAME}.tar.gz ${DISTNAME:S/-/-doc-/}.tar.gz

FLAVORS=	static
FLAVOR?=

SEPARATE_BUILD=	concurrent

CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/support

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
