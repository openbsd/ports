# $OpenBSD: Makefile,v 1.1.1.1 2007/11/29 13:53:03 okan Exp $

COMMENT=	GNU Linear Programming Kit

DISTNAME=	glpk-4.19
SHARED_LIBS=	glpk 4.0 # 4.0

CATEGORIES=	devel
HOMEPAGE=	http://www.gnu.org/software/glpk/index.html
MASTER_SITES=	${MASTER_SITE_GNU:=glpk/}

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m

LIB_DEPENDS=		gmp.>=7::devel/gmp

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include ${CFLAGS}" \
			LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}"

DOCS=			glpk.ps glpk_faq.txt gmpl.ps opb.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/glpk
.	for i in ${DOCS}
		${INSTALL_DATA} ${WRKSRC}/doc/${i} ${PREFIX}/share/doc/glpk
.	endfor

.include <bsd.port.mk>
