# $OpenBSD: Makefile,v 1.20 2002/05/13 18:50:39 espie Exp $

COMMENT=	"GNU utility to indent C source files"

DISTNAME=	indent-2.2.6
CATEGORIES=	devel
NEED_VERSION=	1.402
MASTER_SITES=	${MASTER_SITE_GNU:=indent/}

HOMEPAGE=	http://www.gnu.org/software/indent/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--program-prefix="g"
SEPARATE_BUILD= concurrent

post-extract:
	@rm ${WRKSRC}/indent.info*

.include <bsd.port.mk>
