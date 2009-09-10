# $OpenBSD: Makefile,v 1.15 2009/09/10 22:12:55 jasper Exp $

COMMENT=	File Alteration Monitor

DISTNAME=	fam-2.7.0
PKGNAME=	${DISTNAME}p9
SHARED_LIBS +=	fam	0.0	# .0.0
CATEGORIES=	sysutils

HOMEPAGE=	http://oss.sgi.com/projects/fam/

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# GPLv2 - LGPLv2
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

WANTLIB=	c m rpcsvc stdc++

MASTER_SITES=	ftp://oss.sgi.com/projects/fam/download/stable/ \
		http://www.phil.uu.nl/~lievisse/distfiles/

USE_LIBTOOL=	Yes

AUTOCONF_VERSION=2.59
CONFIGURE_STYLE=autoconf
CONFIGURE_ENV=	CXXFLAGS="${CXXFLAGS} -DHAVE_SOCKADDR_SUN_LEN"

FLAVORS=	kqueue
FLAVOR?=

.if ${FLAVOR:L:Mkqueue}
CXXFLAGS+=	-DHAVE_KQUEUE -pthread
WANTLIB+=	pthread
.endif

post-patch:
	rm -f ${WRKSRC}/configure

pre-configure:
	@perl -pi -e 's,!!SYSCONFDIR!!,${SYSCONFDIR},g' \
		${WRKSRC}/man/famd.conf.5 ${WRKSRC}/man/famd.8
	cp ${FILESDIR}/*.* ${WRKSRC}/src
	mv ${WRKSRC}/man/famd.conf.5 ${WRKSRC}/man/fam.conf.5
.if ${FLAVOR:L:Mkqueue}
	perl -pi -e 's,\@MONITOR_FUNCS\@,IMonKQueue,g' \
		${WRKSRC}/src/Makefile.in
.endif
	
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fam/
	mv ${WRKINST}/${SYSCONFDIR}/fam.conf ${PREFIX}/share/examples/fam/

.include <bsd.port.mk>
