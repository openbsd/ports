# $OpenBSD: Makefile,v 1.14 2003/02/16 14:24:32 naddy Exp $

COMMENT=	"Ericsson's high-level functional programming language"

VERSION=		47.4.0
DISTNAME=		erlang-${VERSION}
CATEGORIES=     	lang

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://erlang.stacken.kth.se/download/ \
			http://www.erlang.org/download/
EXTRACT_SUFX=		.base.tar.gz

USE_GMAKE=		Yes
CONFIGURE_STYLE=	autoconf
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/erts-${VERSION}/autoconf

NO_REGRESS=		Yes

post-configure:
	@cd ${WRKSRC}/erts-47.4.0/autoconf && \
		${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}

.include <bsd.port.mk>
