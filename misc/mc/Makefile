# $OpenBSD: Makefile,v 1.3 2000/03/22 19:58:12 turan Exp $

BROKEN=			"patches are way wrong; auditing requiered."

DISTNAME=		mc-4.1.35
CATEGORIES=     	misc

MAINTAINER=		ryan@erwin.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.nodomainname.net/pub/mirrors/gnu/mc/ \
			ftp://ftp.cdrom.com/.1/gnu/mc/ \
			ftp://labrea.stanford.edu/pub/gnu/mc/ \
			ftp://aeneas.mit.edu/pub/gnu/mc/ \
			ftp://ftp.cs.ubc.ca/mirror2/gnu/mc/ \
			ftp://core.ring.gr.jp/pub/GNU/mc/ \
			ftp://ftp.gnu.org/pub/gnu/mc/ 

DISTFILES=		${DISTNAME}.tar.gz
GNU_CONFIGURE=		yes

.include <bsd.port.mk>
