# OpenBSD makefile for:	postfix
# Version required:	beta-19981230
# Date created:		1998-Dec-10
# Whom:			dugsong@OpenBSD.ORG
#
# Relevant URLs:	http://www.postfix.org/
#			http://www.alphaworks.ibm.com/formula/securemailer/
#
# $OpenBSD: Makefile,v 1.3 1999/01/12 02:39:30 dugsong Exp $

DISTNAME=	postfix-beta-19981230

CATEGORIES=     mail

MASTER_SITES=	ftp://ftp.merit.edu/postfix/ \
		ftp://ftp.sunet.se/pub/unix/mail/postfix/ \
		ftp://ftp.tau.ac.il/pub/unix/mail/postfix/ \
		ftp://ftp.cs.uu.nl/mirror/postfix/postfix-release/ \
		ftp://ftp.win.ne.jp/pub/network/mail/postfix/

MAINTAINER=	dugsong@monkey.org

IS_INTERACTIVE=	yes

NO_CONFIGURE=	yes

ALL_TARGET=	default

pre-install:
	@${SH} ${PKGDIR}/INSTALL with PRE-INSTALL

post-install:
	@${SH} ${PKGDIR}/INSTALL with POST-INSTALL

MAN1=	mailq.1 newaliases.1 postalias.1 postcat.1 postconf.1 postdrop.1 \
	postfix.1 postkick.1 postlock.1 postlog.1 postmap.1 sendmail.1

MAN5=	access.5 aliases.5 canonical.5 relocated.5 transport.5 virtual.5

MAN8=	bounce.8 cleanup.8 defer.8 local.8 master.8 pickup.8 pipe.8 qmgr.8 \
	showq.8 smtp.8 smtpd.8 trivial-rewrite.8

.include <bsd.port.mk>
