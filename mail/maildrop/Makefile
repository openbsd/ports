# $OpenBSD: Makefile,v 1.9 2002/05/13 23:31:25 espie Exp $

COMMENT=	"local mail delivery agent with filtering abilities"

DISTNAME=	maildrop-1.3.4
CATEGORIES=    	mail
NEED_VERSION=	1.463

HOMEPAGE=	http://www.flounder.net/~mrsam/maildrop/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

MASTER_SITES=  	${MASTER_SITE_SOURCEFORGE:=courier/}

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
			--disable-tempdir --enable-restricted-trusted=1 \
			--enable-syslog=1

DOCFILES=		README INSTALL UPGRADE README.postfix

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/maildrop
.for i in ${DOCFILES}
	${INSTALL_DATA} ${WRKSRC}/$i ${PREFIX}/share/doc/maildrop
.endfor

.include <bsd.port.mk>
