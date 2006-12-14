# $OpenBSD: Makefile,v 1.3 2006/12/14 09:50:25 steven Exp $

COMMENT=	"apache HTTP server"

V=		2.2.3
PKGNAME=	apache-httpd-${V}p0
DISTNAME=	httpd-${V}

CATEGORIES=	www net

HOMEPAGE=	http://httpd.apache.org/

# Apache
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=		Yes

WANTLIB=		c crypto m ssl expat db.>=4 iconv expat

LIB_DEPENDS=		aprutil-1.>=2::devel/apr-util \
			apr-1.>=2::devel/apr

USE_LIBTOOL=		Yes

MASTER_SITES=		http://www.mirrorservice.org/sites/ftp.apache.org/httpd/ \
			http://gulus.usherbrooke.ca/pub/appl/apache/httpd/ \
			http://apache.mirror.pacific.net.au/httpd/ \
			http://www.apache.org/dist/httpd/

HTTPD_DIR=		/var/apache2
SYSCONFDIR=		${HTTPD_DIR}/conf

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-layout=OpenBSD \
			--datadir=${HTTPD_DIR} \
			--with-apr=${LOCALBASE} --with-apr-util=${LOCALBASE} \
			--enable-ssl --with-ssl=/usr \
			--with-mpm=prefork \
			--libexecdir=${LOCALBASE}/lib

CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS+=		rel_user=_apache2 rel_group=_apache2 \
			rel_datadir=${HTTPD_DIR} \
			datadir=${PREFIX}/share/examples/apache2 \
			sysconfdir=${PREFIX}/share/examples/apache2/conf

pre-configure:
	@perl -pi -e 's,%%PREFIX%%,${PREFIX},' ${WRKSRC}/config.layout

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} \
	${PREFIX}/{share/doc/apache2,include/apache2,share/examples/apache2}

	chown ${LIBOWN}:${LIBGRP} ${PREFIX}/lib/httpd.exp

	chown ${MANOWN}:${MANGRP} \
	${PREFIX}/man/man1/{dbmmanage,htdbm,htdigest,htpasswd}.1 \
	${PREFIX}/man/man8/{ab,apachectl,apxs,htcacheclean,httpd}.8 \
	${PREFIX}/man/man8/{logresolve,rotatelogs,suexec}.8

	chown ${BINOWN}:${BINGRP} \
	${PREFIX}/sbin/{apachectl,apxs,dbmmanage,envvars,envvars-std}

.include <bsd.port.mk>
