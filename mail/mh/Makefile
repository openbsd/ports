# OpenBSD makefile for:	mh
# Version required:	6.8.4
# Date created:		April 8, 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.7 2000/04/09 17:36:57 espie Exp $
#

DISTNAME=	mh-6.8.3
PKGNAME=	mh-6.8.4
CATEGORIES=	mail
NEED_VERSION=	1.175
FAKE=No
MASTER_SITES=	ftp://ftp.ics.uci.edu/pub/mh/tar/
EXTRACT_SUFX=	.tar.Z

MASTER_SITES0= 	ftp://ftp.ics.uci.edu/pub/mh/updates/
PATCHFILES=	MH.6.8.4.Z:0

MAINTAINER=	angelos@openbsd.org

BROKEN=		"Buffer overflow in MIME support, use nmh >= 1.03 instead."

LICENSE_TYPE=		PD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MAN1=	ali.1 anno.1 burst.1 comp.1 dist.1 folder.1 forw.1 inc.1 mark.1  \
	mh-chart.1 mh.1 mhl.1 mhook.1 mhmail.1 mhn.1 mhparam.1 mhpath.1  \
	msgchk.1 msh.1 next.1 packf.1 pick.1 prev.1 prompter.1 rcvstore.1 \
	refile.1 repl.1 rmf.1 rmm.1 scan.1 send.1 show.1 slocal.1 sortm.1  \
	vmh.1 whatnow.1 whom.1
MAN5=	mh-alias.5 mh-format.5 mh-mail.5 mh-profile.5 mh-sequence.5 mh-tailor.5 
MAN8=	ap.8 conflict.8 dp.8 install-mh.8 post.8 fmtdump.8

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
