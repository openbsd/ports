# $OpenBSD: Makefile,v 1.3 2001/02/09 12:22:44 avsm Exp $

DISTNAME=	maildrop-1.3.0
CATEGORIES=    	mail
NEED_VERSION=	1.351

HOMEPAGE=	http://www.flounder.net/~mrsam/maildrop/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

MASTER_SITES=  	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	courier

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--datadir=${PREFIX}/share/doc \
			--enable-sendmail=/usr/sbin/sendmail \
			--enable-maildrop-gid=bin \
			--disable-tempdir --enable-restricted-trusted=1

DOCFILES=		README INSTALL UPGRADE README.postfix

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/maildrop
.for i in ${DOCFILES}
	${INSTALL_DATA} ${WRKSRC}/$i ${PREFIX}/share/doc/maildrop
.endfor

.include <bsd.port.mk>
