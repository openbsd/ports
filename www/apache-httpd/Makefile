# $OpenBSD: Makefile,v 1.6 2006/12/16 00:41:56 deanna Exp $

COMMENT=	"apache HTTP server"

V=		2.2.3
PKGNAME=	apache-httpd-${V}p2
DISTNAME=	httpd-${V}

CATEGORIES=	www net

HOMEPAGE=	http://httpd.apache.org/

# Apache
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=		Yes

WANTLIB=		c crypto m ssl expat apr-1 db.>=4

LIB_DEPENDS=		aprutil-1.>=2::devel/apr-util

MODULES=		converters/libiconv

USE_LIBTOOL=		Yes

MASTER_SITES=		${MASTER_SITE_APACHE:=httpd/}

HTTPD_DIR=		/var/apache2
SYSCONFDIR=		${HTTPD_DIR}/conf

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-layout=OpenBSD \
			--datadir=${HTTPD_DIR} \
			--with-apr=${LOCALBASE} --with-apr-util=${LOCALBASE} \
			--enable-ssl --with-ssl=/usr \
			--with-mpm=prefork \
			--libexecdir=${LOCALBASE}/lib \
			--with-program-name=httpd2

CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS+=		rel_user=_apache2 rel_group=_apache2 \
			rel_datadir=${HTTPD_DIR} \
			datadir=${PREFIX}/share/examples/apache2 \
			sysconfdir=${PREFIX}/share/examples/apache2/conf


_a2sbin=apachectl apxs dbmmanage htdigest htpasswd logresolve rotatelogs

_a2man1= dbmmanage htdigest htpasswd

_a2man8= apachectl apxs httpd logresolve rotatelogs suexec

pre-configure:
	@perl -pi -e 's,%%PREFIX%%,${PREFIX},' ${WRKSRC}/config.layout

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share
	chown -R ${MANOWN}:${MANGRP} ${PREFIX}/man
	chown -R ${BINOWN}:${BINGRP} ${PREFIX}/sbin
	chown -R ${LIBOWN}:${LIBGRP} ${PREFIX}/lib

.for i in ${_a2man1}
	mv ${PREFIX}/man/man1/${i}.1 ${PREFIX}/man/man1/${i}2.1
.endfor
	
.for i in ${_a2man8}
	mv ${PREFIX}/man/man8/${i}.8 ${PREFIX}/man/man8/${i}2.8
.endfor

.for i in ${_a2sbin}
	mv ${PREFIX}/sbin/${i} ${PREFIX}/sbin/${i}2
.endfor

.include <bsd.port.mk>
