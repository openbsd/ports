# $OpenBSD: iconv.port.mk,v 1.4 2001/11/27 17:44:04 brad Exp $

# The RUN_DEPENDS entry is to ensure libiconv is installed. This is
# necessary so that we have charset.alias installed on static archs.
# Typically installed in PREFIX/lib.
LIB_DEPENDS+=	iconv.2::converters/libiconv
RUN_DEPENDS+=	:libiconv-*:converters/libiconv
