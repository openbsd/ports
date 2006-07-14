# $OpenBSD: Makefile.inc,v 1.6 2006/07/14 21:17:15 steven Exp $

NOT_FOR_ARCHS=	${LP64_ARCHS}

DISTNAME=	xview3.2p1-X11R6
XVIEW_VERSION=	3.2.1
MASTER_SITES=	http://mirror.aiya.ru/pub/slackware/slackware-2.3/source/xv/ \
		http://slackware.cs.utah.edu/slackware-3.0/source/xv/ \
		http://www.ibiblio.org/pub/historic-linux/distributions/slackware/2.1/source/xv/

PERMIT_PACKAGE_CDROM=	"restrictive license"
PERMIT_PACKAGE_FTP=	"restrictive license"
PERMIT_DISTFILES_CDROM=	"restrictive license"
PERMIT_DISTFILES_FTP=	"restrictive license"
