# $OpenBSD: Makefile,v 1.5 2007/05/10 19:56:19 ajacoutot Exp $

COMMENT=	"File Alteration Monitor"

DISTNAME=	fam-2.7.0
PKGNAME=	${DISTNAME}p2
SHARED_LIBS +=	fam	0.0	# .0.0
CATEGORIES=	sysutils

HOMEPAGE=	http://oss.sgi.com/projects/fam/

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
WANTLIB=		c m pthread rpcsvc stdc++

MASTER_SITES=	ftp://oss.sgi.com/projects/fam/download/stable/ \
		http://humppa.nl/distfiles/

USE_LIBTOOL=	Yes

AUTOCONF_VERSION=2.59
CONFIGURE_STYLE=autoconf
CONFIGURE_ENV=	CXXFLAGS="${CXXFLAGS} -DHAVE_SOCKADDR_SUN_LEN" \
		LDFLAGS="-pthread"

post-patch:
	rm -f ${WRKSRC}/configure

pre-configure:
	@perl -pi -e 's,!!SYSCONFDIR!!,${SYSCONFDIR},g' \
		${WRKSRC}/man/famd.conf.5 ${WRKSRC}/man/famd.8
	cp ${FILESDIR}/*.* ${WRKSRC}/src
	mv ${WRKSRC}/man/famd.conf.5 ${WRKSRC}/man/fam.conf.5

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fam/
	mv ${WRKINST}/${SYSCONFDIR}/fam.conf ${PREFIX}/share/examples/fam/

.include <bsd.port.mk>
