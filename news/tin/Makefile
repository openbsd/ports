# ex:ts=8
# OpenBSD makefile for:	tin
# Version required:	tin1.3-unoff-BETA
# Date created:		18 November 1997
# Whom:			gene
#
# $OpenBSD: Makefile,v 1.3 1998/04/12 05:11:49 marc Exp $
#

DISTNAME=       tin1.3-unoff-BETA-970930
PKGNAME=        tin-1.3.970930
CATEGORIES=	news
NO_CDROM=	"NOFEE:	Can not sell"

MASTER_SITES=   ftp://nuxi.ucdavis.edu/pub/tin/ \
		ftp://ftp.akk.uni-karlsruhe.de/pub/tin/ \
		ftp://ftp.nuxi.com/pub/tin/
EXTRACT_SUFX=	.tgz

MAINTAINER=     gene@OpenBSD.ORG

WRKSRC=         ${WRKDIR}/${DISTNAME:S/1.3-unoff-BETA//}
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= --with-nntp-default-server=news  \
		 --with-spooldir=/var/news  \
		 --with-libdir=${PREFIX}/news/lib \
		 --with-mime-default-charset=US-ASCII \
		 --enable-forgery \
		 --enable-curses \
		 --with-ncurses \
		 --enable-break-long-lines \
		 --with-pgp=${PREFIX}/bin/pgp \
		 --with-ispell=${PREFIX}/bin/ispell \
		 --with-metamail=${PREFIX}/bin/metamail
MAKEFILE=	makefile
ALL_TARGET=     build
MAN1=		tin.1

.if defined(NNTP_ONLY)
CONFIGURE_ARGS+=	--enable-nntp-only
.endif

post-configure:
	echo '#define NNTP_SERVER_FILE "${PREFIX}/etc/nntpserver"' >>${WRKSRC}/include/autoconf.h
	echo '#define SMTP_SERVER_FILE "${PREFIX}/etc/smtpserver"' >>${WRKSRC}/include/autoconf.h

.include <bsd.port.mk>
